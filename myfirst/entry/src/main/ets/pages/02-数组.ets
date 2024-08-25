// 学生数组
// 语法：
// let 数组名: 类型[] = [数据1, 数据2, 数据3, ... ]

// 数组中存储的每个数据，都有自己的编号，编号从0开始
let names: string[] = ['白敬亭', '杨洋', '邓恩熙', '张婧仪']
console.log('数组names', names)

// 利用有序的编号（索引）取数组的元素
// 取数据：数组名[索引]
console.log('喜欢的女明星:', names[2])

@Entry
@Component
struct Index {
  @State message: string = '终会与你同行';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}