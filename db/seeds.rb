User.delete_all
User.create!([
  	{ email: 'admin@bablosport.ru', password: "password", is_admin: true}, 
])

Category.delete_all
Category.create!([
  	{ name: 'Букмекерские конторы', root: true, id: 1}, 
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

Landing.delete_all
Landing.create!([
  	{ 
  		name: 'Леон - основной', 
  		slug: "leon", 
  		item_id: 1, 
  		code: "<p>hi!</p>",
  		title: "Букмекерская контора Леон",
  		description: "Ставка на спорт в БК Леон. Бонус 100%",
  		twitter_image: "http://static3.depositphotos.com/1000441/196/i/950/depositphotos_1967582-stock-photo-big-pile-of-the-money.jpg",
  		facebook_image: "http://static3.depositphotos.com/1000441/196/i/950/depositphotos_1967582-stock-photo-big-pile-of-the-money.jpg"
  	},
  	{ 
  		name: 'Леон расширенный', 
  		slug: "leon-ext", 
  		item_id: 1, 
  		code: "<p>hi!</p>",
  		title: "Букмекерская контора Леон",
  		description: "Ставка на спорт в БК Леон. Бонус 100%",
  		twitter_image: "http://static3.depositphotos.com/1000441/196/i/950/depositphotos_1967582-stock-photo-big-pile-of-the-money.jpg",
  		facebook_image: "http://static3.depositphotos.com/1000441/196/i/950/depositphotos_1967582-stock-photo-big-pile-of-the-money.jpg"
  	}
])
