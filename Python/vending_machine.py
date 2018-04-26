# vending machine

class VendingMachine():

    def __init__(self, items, money):
        self.items = items
        self.money = money

    def vend(self, selection, item_money):
        for item in self.items:
            # check if this item is the selection
            if item['code'].lower() == selection.lower():
                # this ain't no charity machine
                if item_money < item['price']:
                    return "Not enough money!"

                # check if in stock
                elif item['quantity'] < 1:
                    return "{}: Out of stock!".format(item['name'])

                # cachier bot
                elif item_money == item['price']:
                    item['quantity'] -= 1
                    self.money += item_money
                    return "Vending {}".format(item['name'])

                elif item_money > item['price']:
                    item['quantity'] -=  1
                    change = item_money - item['price']
                    self.money += item_money - change
                    return "Vending {} with {:.2f} change.".format(item['name'],
                       change)

        else:
            return "Invalid selection!: Money in vending machine = {:.2f}".format(self.money)


items = [{'name':"Smarties", 'code':"A01", 'quantity':10, 'price':0.60},
         {'name':"Caramac Bar", 'code':"A02", 'quantity':5, 'price':0.60},
         {'name':"Dairy Milk", 'code':"A03", 'quantity':1, 'price':0.65},
         {'name':"Freddo", 'code':"A04", 'quantity':1, 'price':0.25}];

machine = VendingMachine(items, 10.0)
