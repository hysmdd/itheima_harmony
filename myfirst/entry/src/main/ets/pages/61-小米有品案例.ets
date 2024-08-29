@Entry
@Component
struct Index {
  // 准备状态
  @State activeIndex: number = 0

  @Builder
  myBuilder(index: number, title: string, icon: ResourceStr, selectedIcon: ResourceStr) {
    Column({space: 5}) {
      Image(index === this.activeIndex ? selectedIcon : icon)
        .width(30)
      Text(title)
        .fontColor(index === this.activeIndex ? '#f5b667': '#000')
    }
  }

  @Builder
  centerBuilder() {
    Image($r('app.media.ic_reuse_02'))
      .width(40)
      .margin({
        bottom: 10
      })
  }

  build() {
    Tabs({
      barPosition: BarPosition.End
    }) {
      TabContent() {
        Text('首页内容')
      }
      .tabBar(this.myBuilder(0, '首页', $r('app.media.ic_tabbar_icon_0'), $r('app.media.ic_tabbar_icon_0_selected')))

      TabContent() {
        Text('分类内容')
      }
      .tabBar(this.myBuilder(1, '分类', $r('app.media.ic_tabbar_icon_1'), $r('app.media.ic_tabbar_icon_1_selected')))

      // 特殊形状的tab
      TabContent() {

      }
      .tabBar(this.centerBuilder)

      TabContent() {
        Text('购物车内容')
      }
      .tabBar(this.myBuilder(3, '购物车', $r('app.media.ic_tabbar_icon_2'), $r('app.media.ic_tabbar_icon_2_selected')))

      TabContent() {
        Text('我的内容')
      }
      .tabBar(this.myBuilder(4, '我的', $r('app.media.ic_tabbar_icon_0'), $r('app.media.ic_tabbar_icon_0_selected')))
    }
    .onChange((index: number) => {
      this.activeIndex = index
    })
    .scrollable(false)
    .animationDuration(0)
  }
}