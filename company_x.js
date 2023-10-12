//create database
use company_x; 


//created collection
db.createCollection({"user"});
db.createCollection({"product"});
db.createCollection({"admin"});


// insert record into collection
db.user.insertOne({
    name: "Haryy Maguire",
    email: "Harry5@gmail.com",
    password: "harry5",
    phone_number: "08123453256",
    gender: 'm',
    address: "234, saint street, Lagos",
    createdAt: new Date()
})

db.user.insertMany(
    [
        {
            name: "Harriet Maguire",
            email: "Harriet5@gmail.com",
            password: "harriet5",
            phone_number: "08123452389",
            gender: 'f',
            address: "234, saint street, Lagos",
            createdAt: new Date()
        },
        {
            name: "David Anthony",
            email: "Anthony8@gmail.com",
            password: "Anthony8",
            phone_number: "08123409876",
            gender: 'm',
            address: "118, police precinct, Lagos",
            createdAt: new Date()
        },
        {
            name: "Robert Anthony",
            email: "RobertA@gmail.com",
            password: "RobertA",
            phone_number: "08123450098",
            gender: 'm',
            address: "112, new Orleans, Lagos",
            createdAt: new Date()
        }
    ]
)

db.product.insertOne(
    {
        name: "Air force 1",
        price: 42000,
        size: "s",
        category: "shoe",
        createdAt: new Date()
    }
)

db.product.insertMany(
    [
        {
            name: "Balenciaga top",
            price: 20000,
            size: 'xxl',
            category: 'shirt',
            createdAt: new Date()
        },

        {
            name: "Nike snap back",
            price: 10000,
            size: 'm',
            category: 'hat',
            createdAt: new Date()
        },
        {
            name: "chelsea boots",
            price: 90000,
            size: 'l',
            category: 'shoe',
            createdAt: new Date()
        }
    ]
)

// updating user and product record

db.user.update(
    {_id: id},
    {
        $set: {
            email: "newmail@gmail.com"
        }
    }
)

db.product.update(
    {_id: id},
    {
        $set: {
            size; 'xxl'
        }
    }
)

// delete user and product record
db.user.deleteOne({
    name: "Harriet maguire"
})

db.user.deletemany({
    size: 'l'
})
