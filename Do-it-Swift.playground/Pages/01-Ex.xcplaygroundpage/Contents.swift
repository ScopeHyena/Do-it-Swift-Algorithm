let a = 3, b = 1, c = 4, d = 2
print("a: \(a), b: \(b), c: \(c), d: \(d)")

//MARK: - Q1

func max4(a: Int, b: Int, c: Int, d: Int) -> Int {
    var max = a
    b > max ? max = b : ()
    c > max ? max = c : ()
    d > max ? max = d : ()
    
    return max
}
print("max4(\(a),\(b),\(c),\(d))")
print(max4(a: a, b: b, c: c, d: d))
print()

//MARK: - Q2
func min3(a: Int, b: Int, c: Int) -> Int {
    var min = a
    b < min ? min = b : ()
    c < min ? min = c : ()
    return min
}
print("min3(\(a),\(d),\(c))")
print(min3(a: a, b: d, c: c))
print()

//MARK: - Q3
func min4(a: Int, b: Int, c: Int, d: Int) -> Int {
    var min = a
    b < min ? min = b : ()
    c < min ? min = c : ()
    d < min ? min = d : ()
    
    return min
}
print("min4(\(a),\(b),\(c),\(d))")
print(min4(a: a, b: b, c: c, d: d))
print()

let sampleData: [(a: Int, b: Int, c: Int)] = [(3,2,1), (3,2,2), (3,1,2), (3,2,3), (2,1,3), (3,3,2), (3,3,3), (2,2,3), (2,3,1), (2,3,2), (1,3,2), (2,3,3), (1,2,3)]
//MARK: - Q4
func med3(a: Int, b: Int, c: Int) -> Int {
    if a >= b {
        if b >= c {
            return b
        } else if a <= c {
            return a
        } else {
            return c
        }
    } else if a > c {
        return a
    } else if b > c {
        return c
    } else {
        return b
    }
}
for (a, b, c) in sampleData {
    print("med3(\(a),\(b),\(c)) = \(med3(a: a, b: b, c: c))")
}
print()

//MARK: - Q5
func med3alt(a: Int, b: Int, c: Int) -> Int {
    if (b >= a && c <= a) || (b <= a && c >= a) {
        return a
    } else if (a > b && c < b) || (a < b && c < b) {
        return b
    }
    return c
}

for (a, b, c) in sampleData {
    print("med3alt(\(a),\(b),\(c)) = \(med3alt(a: a, b: b, c: c))")
}
print()
// 1C-1에서는 최악의 경우 3번만 비교하면 되지만 이번 예제의 경우 최악의 경우 10번을 비교해야 한다.

//MARK: - Q6
var iQ6 = 1, nQ6: Int
var sumQ6 = 0
print("Get sum of 1 to n.")
print("n :", terminator: " ")

//MARK: - 입력이 안 되므로 따로 설정
nQ6 = 5
//MARK: -
print(nQ6)

while iQ6 <= nQ6 {
    sumQ6 += iQ6
    iQ6 += 1
    print(iQ6) // HERE!
}
print("Sum of 1 to \(nQ6) is \(sumQ6).")
print()

//MARK: - Q7
var sumQ7 = 0
var nQ7: Int

print("Get Sum of 1 to n")
print("n :", terminator: " ")
nQ7 = 7
print(nQ7)

for i in 1...nQ7 {
    print(i, terminator: i == nQ7 ? " = " : " + ")
    sumQ7 += i
}
print(sumQ7)
print()

//MARK: - Q8
var sumQ8 = 0
var nQ8: Int

print("Get sum of 1 to n")
print("n :", terminator: " ")
nQ8 = 10
print(nQ8)
sumQ8 = (1 + nQ8) * nQ8 / 2
print("Sum of 1 to \(nQ8) = \(sumQ8)")