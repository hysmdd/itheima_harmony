@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Column() {
          Text('玩一玩')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
          Text('签到兑礼 | 超多大奖 超好玩')
            .fontSize(12)
            .fontColor('#aaa')
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 10
            })
        }
        .alignItems(HorizontalAlign.Start)

        Image('https://sns-avatar-qc.xhscdn.com/avatar/61cedc079b65e05ce4e2070a.jpg')
          .width(60)
          .height(60)
          .borderRadius(8)
          .margin({
            left: 40
          })

        Image($r('app.media.ic_public_arrow_right'))
          .height(30)
          .fillColor('#999')
      }
      .width('100%')
      .height(90)
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor('#fff')
      .borderRadius(10)
      .padding({
        left: 20,
        right: 20
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#eee')
    .padding(10)
  }
}