import sys;
import os;
import distutils.core;
import xml.dom.minidom;
import Tkinter , tkFileDialog ,Tkconstants
import tkMessageBox
from Tkinter import *
from _winreg import *
import getpass
from datetime import *
import inspect
from xml.dom.minidom import Document
#  import win32ui  # can be used only on windows
import MySQLdb
import zlib

from bs4 import BeautifulSoup  #http://www.crummy.com/software/BeautifulSoup/bs3/documentation.zh.html#Quick%20Start

class Application(Frame):
    def importBookmarks(self):
	filename = tkFileDialog.askopenfilename(initialdir = 'E:/Python')	
	writeIntoDB(filename)

    def createWidgets(self):
        self.importBtn = Button(self)
        self.importBtn["text"] = "Import Bookmarks",
        self.importBtn["command"] = self.importBookmarks

        self.importBtn.pack({"side": "left"})

    def __init__(self, master=None):
        Frame.__init__(self, master)
        self.pack()
        self.createWidgets()


# read this filename add load data to mysql    
def writeIntoDB_(filename):
    db = MySQLdb.connect("localhost","root","root","bkmanager" )
    cursor = db.cursor()    
    fileHandle = open(filename, 'r')
    content = fileHandle.read()
    fileHandle.close()

    regex = r'(?is)<a href="(.*?)"(.*?)>(.*?)</a>'
    pattern = re.compile(regex, re.DOTALL)    
    matches = re.findall(pattern,content)
    
    for match in matches:
	print match[0]
	sql = "insert into bookmark (text,url) values (%s, %s)"
	try:
	    cursor.execute(sql,(match[2], match[0]))
	    db.commit()
	except:
	    db.rollback()	    
    db.close()
   
   
      
	   
def writeIntoDB(filename):
    soup = BeautifulSoup(open(filename, 'r').read(), from_encoding = "iso-8599-8")
    soup.prettify()

    db = MySQLdb.connect("localhost","root","root","bkmanager" )
    cursor = db.cursor()       
    
    aLinks = soup.find_all("a")
    for i in aLinks:
	text =  i.string	
	url = i.get("href")
	sql = "insert into bookmark (text,url,category,hash) values (%s, %s, %s, %s)"
	try:
	    hash = zlib.crc32(text)+ zlib.crc32(url)
	    cursor.execute(sql,(text, url, 0, hash))
	    db.commit()
	except:
	    db.rollback()
       
    categories = soup.find_all("h3")
    for i in categories:
	text = i.string
	level = 1
	sql = "insert into category (text, level, parent, hash) values (%s, %s, %s, %s)"
	try:
	    hash = zlib.crc32(text) + zlib.crc32('1')
	    cursor.execute(sql,(text, level, 1, hash))
	    db.commit()
	except:
	    db.rollback()
    db.close()
    
    

    
    
root = Tkinter.Tk()
root.geometry( "400x150" )
app =Application()
root.mainloop()
