closet = {
	shelf: {
		total_shelves: 3,
		items: {
			handbags: 5,
			backpacks: 2,
			hats: 3
		},
		brand: [
			'Coach',
			'Tory Burch',
			'Kate Spade'
		]
	},
	drawer: {
		total_drawers: 4,
		items: {
			socks: 10,
			bottoms: 15,
			tops: 20,
			dresses: 10,
		},
		brand: [
			'Uniqlo',
			'Express',
			'American Eagle'
		]
	},
	garment_rack: {
		total_gracks: 1,
		items: {
			blazer: 2,
			pants: 5,
			skirt: 5
		},
		brand: [
			'Uniqlo',
			'Express',
			'American Eagle'
		]
	},
	hooks: {
		total_hooks: 12,
		items: {
			scarves: 5,
			belts: 5
		},
		brand: [
			'American Eagle',
			'J Crew'
		]
	},
	shoe_rack: {
		total_racks: 3,
		items: {
			sandals: 2,
			flats: 3,
			boots: 3,
			sneakers: 1
		},
		brand: [
			'Tory Burch',
			'TOMS',
			'Converse',
			'Nike',
			'Sorel'
		]
	}
}

#Check contents of shoe rack
#closet[:shoe_rack][:items]

#Check brands of clothing in drawer
#closet[:drawer][:brand]

#Add brand of clothing to drawer
#closet[:drawer][:brand].push("Armani Exchange")

#Change all brand names to lowercase in shelf
#closet[:shelf][:brand][1]

#Print out number of types of shoes
closet[:shoe_rack][:items].each do |item|
	if item.class == Hash 
		item.each do|type, qty|
			print "I have #{qty} pair/pairs of #{type}"
		end
	end
end