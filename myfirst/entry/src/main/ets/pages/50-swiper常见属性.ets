@Entry
@Component
struct Index {
  build() {
    Column() {

      Swiper() {
        Text('1')
          .backgroundColor(Color.Orange)
        Text('2')
          .backgroundColor(Color.Yellow)
        Text('3')
          .backgroundColor(Color.Brown)
      }
      .width('100%')
      .height(400)
      .loop(true)   // 开启循环
      .autoPlay(true)   // 自动播放
      .interval(3000)   // 自动播放间隔
      .vertical(true)   // 纵向

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
      .height(150)
    }
  }
}