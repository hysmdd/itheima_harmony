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
      .width('100%')
      .height(150)
    }
  }
}