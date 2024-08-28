@Extend(Text)
function textExtend() {
  .fontSize(20)
  .fontWeight(FontWeight.Bold)
}

@Extend(Text)
function bannerExtend(color: ResourceColor, message: string) {
  .textAlign(TextAlign.Center)
  .backgroundColor(color)
  .fontColor(Color.White)
  .fontSize(30)
  .onClick(() => {
    AlertDialog.show({
      message: message
    })
  })
}

@Entry
@Component
struct Index {
  @State message: string = '@Extend-扩展组件(样式, 事件)'

  build() {
    Column() {

      Text(this.message)
        .textExtend()

      Swiper() {
        Text('1')
          .bannerExtend(Color.Orange, '轮播图1')
        Text('2')
          .bannerExtend(Color.Green, '轮播图2')
        Text('3')
          .bannerExtend(Color.Pink, '轮播图3')
      }
      .autoPlay(true) // 自动播放
      .loop(true) // 开启循环
      .interval(1500) // 自动播放间隔
      .width('100%')
      .aspectRatio(2.4) // 设置和图片一致的宽高比，保证图片正常适配
      // .height(150)
      .indicator(
        Indicator.dot()
          .itemWidth(15)
          .itemHeight(6)
          .color('#ccc')
          .selectedItemWidth(30)
          .selectedItemHeight(6)
          .selectedColor('#fff')
      )
    }
    .width('100%')
  }
}