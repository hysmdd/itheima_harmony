@Entry
@Component
struct Index {
  @State myColor: string = '#7e7e7e'
  @State myNum: number = 8888
  @State state: boolean = false

  build() {
    Column() {
      Column() {
        Image($r('app.media.eyes'))
          .width('100%')
          .borderRadius({
            topLeft: 10,
            topRight: 10
          })

        Column() {
          Text('考眼力又来了你能看到几只鸭子？')
            .fontSize(16)
            .lineHeight(20)

          Row() {
            Row({ space: 5 }) {
              Image($r('app.media.avatar'))
                .width(16)
              Text('视野联行眼镜')
                .fontColor('#7e7e7e')
                .fontSize(12)
            }
            .layoutWeight(1)

            Row({ space: 3 }) {
              Image($r('app.media.ic_love'))
                .width(14)
                .fillColor(this.myColor)
              Text(this.myNum.toString())
                .fontSize(12)
                .fontColor(this.myColor)
            }
            .onClick(e => {
              if (this.state) {
                this.myColor = '#7e7e7e'
                this.myNum -= 1
                this.state = false
              } else {
                this.myNum += 1
                this.myColor = '#f00'
                this.state = true
              }
            })
          }
          .width('100%')
          .margin({
            top: 10
          })
        }
        .padding(10)
      }
      .width(200)
      .height(360)
      .backgroundColor('#fff')
      .borderRadius(10)
    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
    .backgroundColor('#aaa')
  }
}