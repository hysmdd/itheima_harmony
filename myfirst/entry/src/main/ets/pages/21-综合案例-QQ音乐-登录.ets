@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Image('https://sns-avatar-qc.xhscdn.com/avatar/61cedc079b65e05ce4e2070a.jpg')
          .width(120)
          .borderRadius(60)
        Text('邓恩熙')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin({
            top: 20,
            bottom: 50
          })
        Button('QQ登录')
          .width('100%')
          .margin({
            bottom: 15
          })
          .fontSize(20)
          .height(50)
        Button('微信登录')
          .width('100%')
          .fontColor('#000')
          .fontSize(20)
          .backgroundColor('#dfdfdf')
          .height(50)
      }
      .padding(20)
      .width('100%')
    }
  }
}