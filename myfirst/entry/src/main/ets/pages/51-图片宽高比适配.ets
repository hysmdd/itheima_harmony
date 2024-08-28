@Entry
@Component
struct Index {
  build() {
    Column() {
      Swiper() {
        Image($r('app.media.ic_swiper_xmyp01'))
        Image($r('app.media.ic_swiper_xmyp02'))
        Image($r('app.media.ic_swiper_xmyp03'))
        Image($r('app.media.ic_swiper_xmyp04'))
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