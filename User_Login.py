#OOP Project : Food Waste Management System
import kivy
from kivy.app import App
from kivy.core.window import Window
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.widget import Widget

# RGBA: R-red, G-green, B-blue, A-Appearency
import kivy
import kivymd
from kivy.app import App
from kivy.uix.label import Label
from kivymd.uix.dialog import MDDialog
from kivy.lang import Builder
from kivymd.app import MDApp
from kivymd.color_definitions import colors

mainkv = """
Screen:
    MDCard:
        size_hint: None, None
        size: 500, 300
        pos_hint:{"center_x":0.5, "center_y":0.5}
        elevation: 10
        padding:25
        spacing:25
        orientation: "vertical"
    MDLabel:
        id:welcome_label
        text: "WELCOME! Your one help may be the boon of life for the hungry!!!"
        text_color:1,0,0,0 
        halign:"center" 
        font_size:36
        pos_hint:{"center_x":0.5, "center_y":0.76} 
        size_hint_y:None 
        height: self.texture_size[1]
    MDLabel:
        id:login_label
        text: "Press the Login Button if You have Inputed correctly"
        text_color:1,1,0,1
        halign:"center" 
        font_size:14
        pos_hint:{"center_x":0.5, "center_y":0.32} 
        size_hint_y:None 
        height: self.texture_size[1]

    MDTextFieldRound:
        id: user
        hint_text:"Enter Your Name:"
        icon_right:"account"
        icon_color:1,0,0,1
        size_hint_x:None
        width:250
        font_size:20
        pos_hint:{"center_x":0.5,"center_y":0.6}
    MDTextFieldRound:
        id: user_email
        hint_text:"Enter Your Email_ID:"
        icon_right:"account"
        size_hint_x:None
        width:250
        font_size:20
        pos_hint:{"center_x":0.5,"center_y":0.5}
    MDTextFieldRound:
        id: user_password
        hint_text:"Password:"

        icon_right:"eye-off"
        size_hint_x:None
        width:250
        font_size:20
        pos_hint:{"center_x":0.5,"center_y":0.4}
        password:True
    MDRoundFlatButton:
        text: "Login"
        font_size:20
        pos_hint:{"center_x":0.5, "center_y":0.2}

    MDRoundFlatButton:
        text: "clear"
        font_size:20
        pos_hint:{"center_x":0.5, "center_y":0.1}

"""


class UserLogin(MDApp):
    def build(self):
        self.theme_cls.theme_style = "Light"
        self.theme_cls.primary_palette = "Blue"

        # return Builder.load_file("mainkv")
        return Builder.load_string(mainkv)


UserLogin().run() #////////

Window.clearcolor=(0,0,1,1)

class User_Detail(GridLayout, Label): # inheriting (Gridlayout) inbuilt class in kivy
    def __init__(self, **kwargs):# **kwargs = we can take no. of variables as we need in future
        super(User_Detail, self).__init__()# using Super class and
        def display_it(instance, people):
            print("This is a wonderfull App to manage the Waste Food and to Feed the", people)

        widget = Label(text='[color=ff9999][size=36][b]To know about this Food Waste Management App click [u][ref=Hungry]Here[/ref][/u][/color][/size]', markup=True)
        self.add_widget(widget)
        widget.bind(on_ref_press=display_it)
        self.cols=1
        #self.rows=9

        # calling all the attributes and methods of the User_Detail class
        self.add_widget(Label(text="[b][color=ff3333]Please enter your [u]Name[/u]:", font_size="20", markup=True))
        self.User_Name=TextInput() # To take the input from user
        self.add_widget(self.User_Name)

        self.add_widget(Label(text="[b][color=ff3333]Please enter your [u]Contact No[/u]:", font_size="20",markup=True))
        self.Contact_No = TextInput()  # To take the input from user
        self.add_widget(self.Contact_No)

        self.add_widget(Label(text="[b][color=ff3333]Please enter your [u]Alternate Contact No.[/u] if you have[/b]:",font_size="20",markup=True))
        self.Alt_Contact_No = TextInput()  # To take the input from user
        self.add_widget(self.Alt_Contact_No)

        self.add_widget(Label(text="[b][color=ff3333]Please enter [u]Occassion Address[/u]:",font_size="20",markup=True))
        self.Occassion_Addr = TextInput()  # To take the input from user
        self.add_widget(self.Occassion_Addr)

    def set_occasion_addr(self):
        self.new_occas_address=input("Enter the new Occasion address:")
        print("New occasion adress is ",self.new_occas_address)
    def set_food(self):
        self.waste_food=input("Enter the food that is left:")
        self.food_quantity=int(input("Enter the quantity of food:"))
        print("Foods are ",self.waste_food,"and Food quantity is ",self.food_quantity, "Kg")
    def time_line(self):
        self.time_line=int(input("Enter the time until the fodd can be used in hour:"))
        print("Food can be used within ",self.time_line, "hour")
class User(App, GridLayout):
    def build(self):

        return User_Detail()

if __name__=="__main__":
    User().run()
from twilio.rest import Client
account_sid="AC5ff0b0f02509b6231f77cf6cd5984c98"
auth_token="1749f99cccd8a1fb3f6652c38dc749dd"
phone_no="+19704402281"
client=Client(account_sid,auth_token)
message=client.messages.create(
    body="At the given address the function happened and food is left in given quantity. 'IIITDWD' !!!",
    from_=phone_no,
    to="+919060768193"
)
print("message has been sent successfully:")
obj=User_Detail()
obj.set_occasion_addr()
obj.set_food()
obj.time_line()





