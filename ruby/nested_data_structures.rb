classroom_desks = [
	{'first' => ['pens', 'pencil', 'sharpie']},
	{'second' => {'stickers' => ['yellow star', 'red heart']}},
	{'third' => [
		['construction paper', 'cardboard'], 
		['index cards', 'copy paper'], 
		['wide ruled', 'college ruled', 'blank paper']
	]},
	{'fourth' => 'glitter'}
]

#print a few individual pieces of nested data
#show how to use multiple indexes or hash keys to access nested items
#try to show different types of access 

#access third index of classroom_desks
#classroom_desks[3]
#=> {"fourth"=>"glitter"}

#add an item in stickers hash
#classroom_desks[1]['second']['stickers'].push('purple diamond')
#=> ["yellow star", "red heart", "purple diamond"]

#change index 
#classroom_desks[2]['third'][0] = ['two-hole punched', 'stapled paper']
#=> ["two-hole punched", "stapled paper"]

#b/c of the reassignment, the index is changed (in place!)
#classroom_desks
#=> [{"first"=>["pens", "pencil", "sharpie"]}, {"second"=>{"stickers"=>["yellow star", "red heart"]}}, {"third"=>[["two-hole punched", "stapled paper"], ["index cards", "copy paper"], ["wide ruled", "college ruled", "blank paper"]]}, {"fourth"=>"glitter"}]

#access index with hash and index
#classroom_desks[0]['first'][1] 
#=> "pencil"

#access index with hash and another hash and another index
#classroom_desks[1]['second']['stickers'][1]
#=> "red heart"
