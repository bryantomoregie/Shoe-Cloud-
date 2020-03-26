User.destroy_all
Shoe.destroy_all
Purchase.destroy_all

u1 = User.create({name:"Lola Smith",email_address:"Lelitts32@gmail.com",username:"Lol32",password: "Lolalt32"})
u2 = User.create({name:"Ashley Pront",email_address:"Prontash98@gmail.com",username:"Ash83",password: "Ashle65"})
u3 = User.create({name:"Pho",email_address:"Pho78@gmail.com",username:"Phov76",password: "Phoray"})
u4 = User.create({name:"Lizzy",email_address:"Liztui09@gmail.com",username:"Lizz67",password: "Loggpass"})
u5 = User.create({name:"Steven",email_address:"Steven99@hotmail.com",username:"Steve123",password: "mypass345"})


s1 = Shoe.create({category:"Ranger Boots", price: 59.10,color: "Red"})
s2 = Shoe.create({category:"Viper Boots", price: 89.79,color: "Brown"})
s3 = Shoe.create({category:"Leather Boots", price: 75.99,color: "Black"})
s4 = Shoe.create({category:"Nike Sneakers", price: 59.65,color: "Blue"})
s5 = Shoe.create({category:"Addidas Sneakers", price: 99.95,color: "Black"})
s6 = Shoe.create({category:"Pirma Sneakers", price: 70.99,color: "Brown"})
s7 = Shoe.create({category:"Converse Sneakers", price: 99.00,color: "Blue"})
s8 = Shoe.create({category:"Light-bolt Sneakers", price: 49.75,color: "Blue"})
s9 = Shoe.create({category:"Victoria Heels", price: 89.79,color: "Brown"})
s10 = Shoe.create({category:"Shoshana Heels", price: 75.59,color: "Black"})


p1= Purchase.create({shoe_id:s1.id,user_id:u2.id})
p2= Purchase.create({shoe_id:s2.id,user_id:u1.id})
p3= Purchase.create({shoe_id:s3.id,user_id:u3.id})
p4= Purchase.create({shoe_id:s1.id,user_id:u4.id})
p5= Purchase.create({shoe_id:s4.id,user_id:u5.id})
p1= Purchase.create({shoe_id:s5.id,user_id:u1.id})

