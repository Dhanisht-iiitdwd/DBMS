import kivy
from kivy.app import App
from kivy.core.window import Window
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.widget import Widget
#Window.clearcolor=(0,0,1,1)
class restu_class(GridLayout, Label):
    def __init__(self, **kwargs):
        super(restu_class, self).__init__()
        self.cols=1
        self.add_widget(Label(text="[b][color=ff3333]Please enter [u]Restuarent Name[/u] :", font_size="20", markup=True))
        self.resturant_name=TextInput()
        self.add_widget(self.resturant_name)

        self.add_widget(Label(text="[b][color=ff3333]Please enter [u]Restuarent Registration No.[/u] :", font_size="20", markup=True))
        self.__resturant_reg_no = TextInput() # This is private attribute
        self.add_widget(self.__resturant_reg_no)

        self.add_widget(Label(text="[b][color=ff3333]Please enter [u]Address[/u] :", font_size="20",
                              markup=True))
        self.resturant_address = TextInput()
        self.add_widget(self.resturant_address)

        self.add_widget(Label(text="[b][color=ff3333]Please enter [u]Contact No.[/u] :", font_size="20",
                              markup=True))
        self.resturant_contact_no = TextInput()
        self.add_widget(self.resturant_contact_no)

        self.add_widget(Label(text="[b][color=ff3333]Please enter [u]Email Address[/u] :", font_size="20",
                              markup=True))
        self.resturant_email = TextInput()
        self.add_widget(self.resturant_email)

    def set_food(self):
        self.waste_food=input("Enter the food that is left:")
        self.food_quantity=int(input("Enter the quantity of food:"))
        print("Foods are ",self.waste_food,"and Food quantity is ",self.food_quantity, "Kg")
    def time_line(self):
        self.time_line=int(input("Enter the time until the fodd can be used in hour:"))
        print("Food can be used within ",self.time_line, "hour")
class Restuarent(App,GridLayout):
    def build(self):
        return restu_class()
if __name__=="__main__":
    Restuarent().run()
from twilio.rest import Client
account_sid="AC5ff0b0f02509b6231f77cf6cd5984c98"
auth_token="1749f99cccd8a1fb3f6652c38dc749dd"
phone_no="+19704402281"
client=Client(account_sid,auth_token)
message=client.messages.create(
    body="Here food left, You can pick up it !!!",
    from_=phone_no,
    to="+919060768193"
)
print("message has been sent successfully:")
a=restu_class()
a.set_food()
a.time_line()


