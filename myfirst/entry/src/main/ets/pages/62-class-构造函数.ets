class Food {
  name: string
  price: number

  constructor(name: string, price: number) {
    this.name = name
    this.price = price
  }
}

let f1: Food = new Food('西蓝花', 6.9)
console.log("名称：", f1.name + "，价格：", f1.price)

let f2: Food = new Food('土豆', 2.99)
console.log("名称：", f2.name + "，价格：", f2.price)

@Entry
@Component
struct Index {

  build() {
  }
}