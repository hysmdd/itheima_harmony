@Entry
@Component
struct Index {
  @State message: string = '终会与你同行';

  build() {
    Column() {
      // Image('https://sns-webpic-qc.xhscdn.com/202408252143/f1edc0ad3ceb86dac4e90547fe454aeb/1040g2sg311fmpv3vmq005o03gac08il1epbs8c0!nc_n_webp_mw_1')
      //   .width(200)
      Row() {
        Image($r('app.media.ye'))
          .borderRadius(15)
          .height(300)
      }
      .width('100%')
      Row() {
        Text('今日份比耶！！✌🏻')
          .width(200)
          .lineHeight(30)
      }
      .width('100%')
      Row() {
        Image('https://sns-avatar-qc.xhscdn.com/avatar/61cedc079b65e05ce4e2070a.jpg')
          .height(20)
          .borderRadius(10)
        Text('邓恩熙')
          .fontSize(18)
          .margin(10)
      }
      .height(40)
      .width('100%')
    }
    .margin(20)
  }
}