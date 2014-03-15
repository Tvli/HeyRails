# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Product.delete_all

Product.create(title: 'Programming Ruby2.1.1',
				description:
					%{<p> Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox</p>},
        		image_url:'ruby.png',
        		price:49.95)

Product.create(title: 'Breed Love Guitar',
			   description: 
			   		%{
			   			<P>
			   				Breed love guitar is made in Korea. It has a fantastic quality and cost not expensive.
			   			</p>
			   		},
			   	image_url:'breedlove.jpg',
			   	price:545.00	
	)

Product.create(
				title: "Keilwerth Saxophone",
				description: 
					%{
						<p>
							The <strong>Julius Keilwerth</strong> company is a German saxophone manufacturer, established in 1925.
						</p>
					},
				image_url: 'keilwerth.jpg',
				price:5000.00
	)












