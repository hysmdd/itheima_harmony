@Entry
@Component
struct Index {
  @State count: number = 1
  @State oldPrice: number = 40.4
  @State newPrice: number = 10.4
  @State totalPrice: number = this.newPrice

  build() {
    Column() {
      Column() {

        Row() {
          Image($r('app.media.product1'))
            .width(80)
            .borderRadius(10)

          Column() {
            Text('冲销量1000ml缤纷八果水果捞')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .margin({
                bottom: 7
              })
            Text('含一份折扣商品')
              .fontSize(10)
              .fontColor('#aaa')
              .fontWeight(FontWeight.Bold)
              .margin({
                bottom: 7
              })
            Row() {
              Row() {
                Text() {
                  Span(' ¥ ')
                    .fontSize(14)
                    .fontColor('#ff4000')
                  Span(this.newPrice.toFixed(2))
                    .fontSize(18)
                    .fontWeight(500)
                    .fontColor('#ff4000')
                }

                Text() {
                  Span(' ¥ ')
                    .fontSize(14)
                    .fontColor('#999')
                  Span(this.oldPrice.toFixed(2))
                    .fontSize(14)
                    .fontWeight(500)
                    .fontColor('#999')

                }
                .decoration({
                  type: TextDecorationType.LineThrough
                })
                .margin({ left: 6 })
              }
              .layoutWeight(1)

              Row() {
                Text('-')
                  .width(22)
                  .height(22)
                  .border({ width: 1, color: '#ddd' })
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
                  .onClick(() => {
                    if (this.count > 1) {
                      this.count--
                      this.totalPrice = this.newPrice * this.count
                    }
                  })
                Text(this.count.toString())
                  .height(22)
                  .border({ width: 1, color: '#ddd' })
                  .padding({ left: 10, right: 10 })
                  .fontSize(14)
                Text('+')
                  .width(22)
                  .height(22)
                  .border({ width: 1, color: '#ddd' })
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
                  .onClick(() => {
                    this.count++
                    this.totalPrice = this.newPrice * this.count
                  })
              }
              .width(40)
              .margin({ right: 30 })
            }
            .width('100%')
          }
          .layoutWeight(1)
          .alignItems(HorizontalAlign.Start)
          .padding({ left: 10 })
        }
        .width('100%')
        .padding(20)
        .height('100%')
        .backgroundColor('#f3f3f3')
        .alignItems(VerticalAlign.Top)
        .height('80%')


        Row() {
          Column() {
            Text() {
              Span(`已选 ${this.count} 件，`)
                .fontSize(14)
                .fontColor('#aaa')
              Span('合计：')
                .fontSize(14)
                .fontWeight(600)
              Span(`¥ ${this.totalPrice.toFixed(2)}`)
                .fontColor('#f00')

            }

            Text(`共减 ¥ ${((this.oldPrice - this.newPrice) * this.count).toFixed(2)}`)
              .fontSize(12)
              .fontColor("#f00")
              .margin({ top: 4 })
          }
          .alignItems(HorizontalAlign.End)
          .margin({ right: 10 })
          .layoutWeight(1)

          Button('结算外卖')
            .width(100)
            .backgroundColor('#ffd441')
            .fontColor('#000')
        }
        .padding({ right: 20 })
        .height(60)
        .backgroundColor('#fff')
        .borderRadius({
          bottomLeft: 20,
          bottomRight: 20
        })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#fff')
      .borderRadius(20)
      .margin({
        top: 20
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fff')
  }
}