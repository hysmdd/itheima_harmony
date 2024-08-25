// 用一个函数，来实现下面的需求：
// 传入 价格 和 数量，返回 计算的结果
// 1. 苹果 2元/斤，买了3斤，多少钱？
// 2. 香蕉 4元/斤，买了4斤，多少钱？
function buy(price: number, num: number) {
  // 1. 处理数据
  const result = price * num
  // 2. 返回结果
  return result
}

console.log('苹果价格', buy(2, 3))
console.log('香蕉价格', buy(4, 4))

@Entry
@Component
struct Index {
  @State message: string = '终会与你同行';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}