@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        // 图片区域
        Stack({
          alignContent: Alignment.Bottom
        }) {
          Image($r('app.media.bz_img'))
            .height(125)
            .borderRadius({
              topLeft: 12,
              topRight: 12
            })

          Row() {
            Row({ space: 5}) {
              Image($r('app.media.bz_play'))
                .width(14)
                .fillColor('#fff')
              Text('288万')
                .fontSize(12)
                .fontColor('#fff')
              Image($r('app.media.bz_msg'))
                .width(14)
                .fillColor('#fff')
              Text('8655')
                .fontSize(12)
                .fontColor('#fff')
            }
            .layoutWeight(1)
            Text('4:33')
              .fontSize(12)
              .fontColor('#fff')
              .width(30)
          }
          .height(24)
          .padding({
            left: 5,
            right: 5
          })
        }
        Column() {
          Text('【凤凰传奇新歌】欢迎来到国风统治区：唢呐一响神曲《铁衣》燃爆登场！')
            .fontSize(13)
            .lineHeight(16)
            .maxLines(2)
            .textOverflow({
              overflow: TextOverflow.Ellipsis
            })

          Row() {
            Text('19万点赞')
              .fontSize(10)
              .fontColor('#e66c43')
              .backgroundColor('#fef0ef')
              .padding(5)
              .borderRadius(2)

            Blank()

            Image($r('app.media.bz_more'))
              .width(14)
          }
          .width('100%')
          .margin({
            top: 6
          })
        }
        .padding(5)
      }
      .width(200)
      .height(200)
      .backgroundColor('#fff')
      .borderRadius(12)
      .margin({
        top: 20
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#e3e4e5')
  }
}