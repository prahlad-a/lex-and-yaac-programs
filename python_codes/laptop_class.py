class Laptop:
    def __init__(self, model_name, brand_name, price):
        self.model_name = model_name
        self.brand_name = brand_name
        self.price = price


ob1 = Laptop('lenevo ideapad', 'lenevo', 70000)
ob2 = Laptop('lene ideapad', 'leno', 700009)

print(ob1.model_name)
