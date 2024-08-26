@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Image('https://sns-webpic-qc.xhscdn.com/202408262010/9f44c2c2e4342e1c27c689d730b0f3c8/1000g00826oqmjgefo0005o03gac08il1cejsfk8!nc_n_webp_mw_1')
          .height(270)
          .width('100%')
          .objectFit(ImageFit.Cover)
          .borderRadius({
            topLeft: 10,
            topRight: 10
          })
        Column({space: 15}) {
          Text('拍拍春天🌸')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })
          Text('No.1')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
          Row() {
            Row({space: 5}) {
              Image('https://sns-avatar-qc.xhscdn.com/avatar/61cedc079b65e05ce4e2070a.jpg')
                .width(20)
                .height(20)
                .borderRadius(10)
              Text('邓恩熙')
                .fontSize(16)
                .fontColor('#666')
            }
            Row({space: 5}) {
              Image($r('app.media.ic_public_highlight'))
                .width(18)
                .fillColor('#666')
              Text('1314')
                .fontColor('#666')
            }
          }
          .margin({
            bottom: 10
          })
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .alignItems(HorizontalAlign.Start)
        .padding({
          left: 15,
          right: 15
        })
      }
      .width(250)
      .backgroundColor('#fff')
      .borderRadius(10)
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor('#ccc')
  }
}