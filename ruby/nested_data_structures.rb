classroom_desks = [

	{first: [
		'pens', 
		'pencil', 
		'sharpie'
		]
	},
	{second: {
		stickers: [
			'yellow star', 
			'red heart']
			}
	},
	{third: [
		['construction paper', 'cardboard'], 
		['index cards', 'copy paper'], 
		['wide ruled', 'college ruled', 'blank paper']
	]},
	{fourth:'glitter'}

]

#change value of array
classroom_desks[0][:first][0] = "paperclips"

#access nested array
classroom_desks[1][:second][:stickers]

#change string to upcase
classroom_desks[1][:second][:stickers][1].upcase!

#add item to end of array
classroom_desks[2][:third][2].push('colored paper')

#change value of hash
classroom_desks[3][:fourth] = "gold"

p classroom_desks

# [{:first=>["paperclips", "pencil", "sharpie"]}, 
# {:second=>{:stickers=>["yellow star", "RED HEART"]}}, 
# {:third=>[["construction paper", "cardboard"], 
# 	["index cards", "copy paper"], 
# 	["wide ruled", "college ruled", "blank paper", "colored paper"]]}, 
# {:fourth=>"gold"}]


