rytis ~ $ irb
irb(main):001:0> a = ['baba', 'dedelis', 'ona', 'rimas']
=> ["baba", "dedelis", "ona", "rimas"]
irb(main):002:0> a
=> ["baba", "dedelis", "ona", "rimas"]
irb(main):003:0> b = [5,6,7,8,9,10,11]
=> [5, 6, 7, 8, 9, 10, 11]
irb(main):004:0> b
=> [5, 6, 7, 8, 9, 10, 11]
irb(main):005:0> a + b
=> ["baba", "dedelis", "ona", "rimas", 5, 6, 7, 8, 9, 10, 11]
irb(main):006:0> x = a + b
=> ["baba", "dedelis", "ona", "rimas", 5, 6, 7, 8, 9, 10, 11]
irb(main):007:0> x.to_s
=> "[\"baba\", \"dedelis\", \"ona\", \"rimas\", 5, 6, 7, 8, 9, 10, 11]"
irb(main):008:0> x.to_s
=> "[\"baba\", \"dedelis\", \"ona\", \"rimas\", 5, 6, 7, 8, 9, 10, 11]"
irb(main):009:0> puts x.to_s
["baba", "dedelis", "ona", "rimas", 5, 6, 7, 8, 9, 10, 11]
=> nil
irb(main):010:0> c = ["Dojo", 9]
=> ["Dojo", 9]
irb(main):011:0> a - c
=> ["baba", "dedelis", "ona", "rimas"]
irb(main):012:0> b - c
=> [5, 6, 7, 8, 10, 11]
irb(main):013:0> b.class
=> Array
irb(main):014:0> a.shuffle
=> ["rimas", "dedelis", "ona", "baba"]
irb(main):015:0> a.shuffle
=> ["rimas", "ona", "baba", "dedelis"]
irb(main):016:0> a.shuffle
=> ["rimas", "ona", "baba", "dedelis"]
irb(main):017:0> a.shuffle
=> ["ona", "rimas", "dedelis", "baba"]
irb(main):018:0> a.shuffle
=> ["ona", "dedelis", "baba", "rimas"]
irb(main):019:0> a.shuffle
=> ["baba", "rimas", "dedelis", "ona"]
irb(main):020:0> a.shuffle
=> ["rimas", "dedelis", "ona", "baba"]
irb(main):021:0> a.shuffle
=> ["ona", "baba", "dedelis", "rimas"]
irb(main):022:0> b.shuffle
=> [6, 10, 8, 9, 5, 11, 7]
irb(main):023:0> b.shuffle
=> [11, 10, 9, 8, 6, 5, 7]
irb(main):024:0> b.shuffle
=> [6, 10, 5, 11, 9, 8, 7]
irb(main):025:0> b.shuffle
=> [7, 10, 5, 11, 9, 6, 8]
irb(main):026:0> b.shuffle
=> [6, 8, 7, 10, 11, 9, 5]
irb(main):027:0> b.shuffle
=> [10, 8, 11, 9, 5, 6, 7]
irb(main):028:0> b.shuffle
=> [8, 9, 7, 11, 6, 10, 5]
irb(main):029:0> b.shuffle
=> [10, 6, 7, 9, 5, 8, 11]
irb(main):030:0> b.shuffle.join(', ')
=> "11, 6, 5, 10, 9, 8, 7"
irb(main):031:0> b.shuffle.join(',')
=> "7,9,8,5,11,6,10"
irb(main):032:0> b.shuffle.join('-')
=> "6-7-11-5-10-9-8"
irb(main):033:0> c
=> ["Dojo", 9]
irb(main):034:0> c.delete(9)
=> 9
irb(main):035:0> c
=> ["Dojo"]
irb(main):036:0> a.length
=> 4
irb(main):037:0> a.reverse
=> ["rimas", "ona", "dedelis", "baba"]