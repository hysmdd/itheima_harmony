@Entry
@Component
struct Index {
  titles: string[] = [
    '首页', '关注', '热门', '军事', '体育', '八卦', '数码', '财经', '美食', '旅行'
  ]

  build() {
    // 生成10个面板
    Column() {
      Tabs() {
        ForEach(this.titles, (item: string) => {
          TabContent() {
            Text(`${item}内容`)
          }
          .tabBar(item)
        })
      }
      .barMode(BarMode.Scrollable)
    }
    .width('100%')
  }
}