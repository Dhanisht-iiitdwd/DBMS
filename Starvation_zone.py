from kivy.app import App
from kivy.core.window import Window
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.widget import Widget
class parent(GridLayout, Label):
    def __init__(self,**kwargs):
        super(parent, self).__init__()
        def display_it(instance,ngo):
            print("NGO is organizing to serve the ....", ngo)

        widget = Label(text='[color=ff9999][size=36][b]To know about NGO click [u][ref=social]Here[/ref][/u][/color][/size]', markup=True)
        self.add_widget(widget)
        widget.bind(on_ref_press=display_it)
        self.cols=1
        self.add_widget(Label(text="[b][color=ff3333]Enter [u]Branch-ID[/u]:", font_size="20", markup=True))
        self.Branch_ID=TextInput()
        self.add_widget(self.Branch_ID)

        self.add_widget(Label(text="[b][color=ff3333]Enter [u]Branch Address[/u]:", font_size="20", markup=True))
        self.Branch_Address = TextInput()
        self.add_widget(self.Branch_Address)

        self.add_widget(Label(text="[b][color=ff3333]Enter [u]Contact No[/u]:", font_size="20", markup=True))
        self.Contact_No = TextInput()
        self.add_widget(self.Contact_No)

    def set_address(self):
        self.new_address = input("Entrer new address:")
        print("New Address is : ",self.new_address)
class Starvation_Zone(App, GridLayout):
    def build(self):
        return parent()
if __name__=="__main__":
    Starvation_Zone().run()
from twilio.rest import Client
account_sid="AC5ff0b0f02509b6231f77cf6cd5984c98"
auth_token="1749f99cccd8a1fb3f6652c38dc749dd"
phone_no="+19704402281"
client=Client(account_sid,auth_token)
message=client.messages.create(
    body=" There is need of food in this starvation zone, provide the food as soon as possible!!!", # This request to main NGO branch
    from_=phone_no,
    to="+919060768193"
)
print("message has been sent successfully:")
obj=parent()
obj.set_address()