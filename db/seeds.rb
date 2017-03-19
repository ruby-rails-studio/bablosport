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
  	{ name: 'Leon', category_id: 1, is_published: true, slug: "leon"},
  	{ name: 'Лига ставок', category_id: 1, is_published: true, slug: "liga-stavok"},
  	{ name: 'Winline', category_id: 1, is_published: true, slug: "winline"},
  	{ name: '1xСтавка', category_id: 1, is_published: true, slug: "1xbet"},
  	{ name: 'Фонбет', category_id: 1, is_published: true, slug: "fonbet" }
])
