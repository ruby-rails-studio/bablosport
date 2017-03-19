User.delete_all
User.create!([
  	{ email: 'admin@bablosport.ru', password: "password", is_admin: true}, 
])

Category.delete_all
Category.create!([
  	{ name: 'Букмекерские конторы', root: true}, 
  	{ name: 'Покер-румы',  root: true }
])

Item.delete_all
Item.create!([
  	{ name: 'Leon', category_id: 1, is_published: true},
  	{ name: 'Лига ставок', category_id: 1, is_published: true},
  	{ name: 'Winline', category_id: 1, is_published: true},
  	{ name: '1xСтавка', category_id: 1, is_published: true},
  	{ name: 'Фонбет', category_id: 1, is_published: true}
])
