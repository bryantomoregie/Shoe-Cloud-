User.destroy_all
Shoe.destroy_all
Purchase.destroy_all

u1 = User.create({name:"Lola Smith",email_address:"Lelitts32@gmail.com",username:"Lol32",password: "Lolalt32"})
u2 = User.create({name:"Ashley Pront",email_address:"Prontash98@gmail.com",username:"Ash83",password: "Ashle65"})
u3 = User.create({name:"Pho",email_address:"Pho78@gmail.com",username:"Phov76",password: "Phoray"})
u4 = User.create({name:"Lizzy",email_address:"Liztui09@gmail.com",username:"Lizz67",password: "Loggpass"})
u5 = User.create({name:"Steven",email_address:"Steven99@hotmail.com",username:"Steve123",password: "mypass345"})


s1= Shoe.create({type:"Boots", price: 59.10,color: "Red"})
s2= Shoe.create({type:"Sneakers", price: 60.00,color: "Black"})
s3= Shoe.create({type:"Heels", price: 89.79,color: "Brown"})
s4= Shoe.create({type:"Boots", price: 75.99,color: "Black"})
s5= Shoe.create({type:"Sneakers", price: 59.75,color: "Blue"})
s6= Shoe.create({type:"Sneakers", price: 69.00,color: "Yellow"})
s7= Shoe.create({type:"Heels", price: 39.75,color: "Black"})
s8= Shoe.create({type:"Boots", price: 70.99,color: "Brown"})
s9= Shoe.create({type:"Heels", price: 99.00,color: "Blue"})
s10= Shoe.create({type:"Sneakers", price: 49.75,color: "Blue"})

p1= Purchase.create({shoe:s1.id,user:u2.id})
p2= Purchase.create({shoe:s2.id,user:u1.id})
p3= Purchase.create({shoe:s3.id,user:u3.id})
p4= Purchase.create({shoe:s1.id,user:u4.id})
p5= Purchase.create({shoe:s4.id,user:u5.id})
p1= Purchase.create({shoe:s5.id,user:u1.id})

