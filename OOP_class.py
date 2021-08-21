# -*- coding: utf-8 -*-
"""
Created on Thu Aug 12 14:51:34 2021

@author: Dhanisht
"""
# import numpy as np
 class TATA:
     def __init__(self):
         self.color="blue"
         self.size="5 metre"
         self.direction="north"
         self.milage="16 kmpl"
         self.type="luxury"
         self.manufacturer="TATA moters"
     def drive(self, dire):
         if (dire=="north"):
             self.direction="west"
         elif (dire=="west"):
             self.direction="south"
         elif (dire=="south"):
             self.direction="east"
         else:
             self.direction="north"
         print(self.direction)
         return 
 car=TATA()
 print(car.color)
 print(car.size)
 print(car.milage)
 print(car.type)
 print(car.manufacturer)
  
 dec=car.drive(north)
 print(dec)
### second problem:
class iiitdwd:
    def __init__(self):
        self.name="Dhanisht jha"
        self.institute="iiit_dwd"
        self.reg_no="20bcs040"
        self.depart="CSE"
        self.year="Second year"
        self.contact="9060768193"
    def print_result(self, cgpa ):
        if (cgpa >=6.0):
            # self.student="first devision"
            print("first devision")
        elif (4<=cgpa<6):
            print("second devision")
            # self.student="second devision"
        else:
            print("third devision")
            # self.student="third devision"
Dhanisht=iiitdwd()
print(Dhanisht.name)
print(Dhanisht.institute)
print(Dhanisht.reg_no)
print(Dhanisht.depart)
print(Dhanisht.year)
print(Dhanisht.contact)
a=int(input("enter cgpa:"))
result=Dhanisht.print_result(a)
print(result)
             
    
