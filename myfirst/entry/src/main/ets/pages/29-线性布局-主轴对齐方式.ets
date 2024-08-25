@Entry
@Component
struct Index {
  build() {
    Column() {
      Text()
        .width(200)
        .height(100)
        .border({ width: 2 })
      Text()
        .width(200)
        .height(100)
        .border({ width: 2 })
        .margin(5)
      Text()
        .width(200)
        .height(100)

        .border({ width: 2 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    // 设置排布主方向的对齐方式（主轴）
    // Start: 主轴起始位置对齐
    // Center: 主轴居中对齐
    // End: 主轴结束位置对齐
    // SpaceBetween 贴边显示，中间的元素均匀分布间隙
    // SpaceAround  间隙环绕
    // SpaceEvenly 间隙均匀环绕
    .justifyContent(FlexAlign.SpaceAround)
  }
}