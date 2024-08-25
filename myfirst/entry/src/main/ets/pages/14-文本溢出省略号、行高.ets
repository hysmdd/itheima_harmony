@Entry
@Component
struct Index {
  @State message: string = '终会与你同行';

  build() {
    Column() {
      Text('女生不会在意你开什么颜色的迈巴赫')
        .width('100%')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .lineHeight(50)
      Text('迈巴赫的天使之翼可以带你去任何的地方，哪怕是她的心里。等你开上迈巴赫，别忘了接回曾经那个自卑的自己，也别忘了关掉父母七八点的闹钟。因为V12发动机的轰鸣声会摧毁一切的流言蜚语。所以朋友，加油吧！迈巴赫的天使之翼能够庇护你的家庭和事业，她也不会在意你开的是迈巴赫什么颜色。')
        .width('100%')
        .lineHeight(24)
        .textOverflow({
          overflow: TextOverflow.Ellipsis
        })
        // 必须搭配maxLines才有效果
        .maxLines(2)
    }
    .width('100%')
  }
}