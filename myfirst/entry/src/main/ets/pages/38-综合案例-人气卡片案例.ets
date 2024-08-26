@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Text('VIP')
          .position({
            x: 0,
            y: 0
          })
          .zIndex(666)
          .backgroundColor('#e49642')
          .width(40)
          .height(20)
          .borderRadius({
            topLeft: 10,
            bottomRight: 10
          })
          .border({
            width: 2,
            color: '#fbe7a3'
          })
          .fontColor('#fbe7a3')
          .fontStyle(FontStyle.Italic)
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
        Image($r('app.media.position_moco'))
          .width('100%')
          .height(210)
          .borderRadius(10)
        Row({space: 6}) {
          Image($r('app.media.position_earphone'))
            .width(20)
            .fillColor('#fff')
            .backgroundColor('#1dc1f0')
            .borderRadius(10)
            .padding(3)
          Text('飞狗MOCO')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
        }
        .width('100%')
        .height(30)
        .padding({
          left: 10,
          right: 10
        })
      }
      .width(168)
      .height(240)
      .margin({
        top: 20
      })
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#e3e4e5')
  }
}