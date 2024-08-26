@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Image($r('app.media.ic_public_arrow_left_filled'))
          .height(40)
        Text('个人中心')
          .fontSize(20)
        Image($r('app.media.ic_public_view_grid'))
          .height(30)
      }
      .padding({
        left: 10,
        right: 10
      })
      .width('100%')
      .height(40)
      .backgroundColor('#fff')
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}