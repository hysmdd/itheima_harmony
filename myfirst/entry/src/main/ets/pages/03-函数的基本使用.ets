// console.log('五角星', '☆')
// console.log('五角星', '☆☆')
// console.log('五角星', '☆☆☆')
// console.log('五角星', '☆☆☆☆')
// console.log('五角星', '☆☆☆☆☆')
//
// console.log('五角星', '☆')
// console.log('五角星', '☆☆')
// console.log('五角星', '☆☆☆')
// console.log('五角星', '☆☆☆☆')
// console.log('五角星', '☆☆☆☆☆')
//
// console.log('五角星', '☆')
// console.log('五角星', '☆☆')
// console.log('五角星', '☆☆☆')
// console.log('五角星', '☆☆☆☆')
// console.log('五角星', '☆☆☆☆☆')

// 1. 定义函数
function star() {
  console.log('五角星', '☆')
  console.log('五角星', '☆☆')
  console.log('五角星', '☆☆☆')
  console.log('五角星', '☆☆☆☆')
  console.log('五角星', '☆☆☆☆☆')
}

// 2. 调用函数
star()
star()
star()

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