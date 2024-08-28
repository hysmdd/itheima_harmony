// 定义接口
interface ImageCount {
  url: string
  count: number
}

// 需求1：遮罩层显示隐藏  透明度opacity 0-1  层级zIndex  -1-99

// 需求2：图片缩放 缩放scale 0-1

@Entry
@Component
struct Index {
  // 2. 基于接口，准备数据
  @State images: ImageCount[] = [
    { url: 'app.media.bg_00', count: 0 },
    { url: 'app.media.bg_01', count: 0 },
    { url: 'app.media.bg_02', count: 0 },
    { url: 'app.media.bg_03', count: 0 },
    { url: 'app.media.bg_04', count: 0 },
    { url: 'app.media.bg_05', count: 0 }
  ]
  // 控制遮罩层的显示隐藏
  @State maskOpacity: number = 0 // 透明度
  @State maskZIndex: number = -1 // 显示层级
  // 控制图片的缩放
  @State maskImgX: number = 0 // 水平缩放比
  @State maskImgY: number = 0 // 垂直缩放比
  // 随机的生肖卡序号
  @State randomIndex: number = -1 // 表示还没有开始抽卡
  // 控制中大奖遮罩的显示隐藏
  @State isGet: boolean = false
  // 奖池
  @State arr: string[] = ['pg', 'hw', 'xm']
  @State prize: string = ''

  build() {
    Stack() {
      Column() {
        Grid() {
          ForEach(this.images, (item: ImageCount, index: number) => {
            GridItem() {
              Badge({
                count: item.count,
                position: BadgePosition.RightTop,
                style: {
                  badgeSize: 20,
                  fontSize: 14,
                  badgeColor: '#fa2a2d'
                }
              }) {
                Image($r(item.url))
                  .width(80)
              }
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .columnsGap(5)
        .rowsGap(5)
        .width('100%')
        .height(300)
        .margin({ top: 100 })

        Button('立即抽卡')
          .width(200)
          .backgroundColor('#ed5b8c')
          .margin({ top: 50 })
          .onClick(() => {
            // 点击时，修改遮罩参数，让遮罩显示
            this.maskOpacity = 1
            this.maskZIndex = 99
            // 点击时，图片需要缩放
            this.maskImgX = 1
            this.maskImgY = 1

            this.randomIndex = (Math.floor(Math.random() * 6))
          })
      }
      .width('100%')
      .height('100%')

      // 抽卡遮罩层
      Column({ space: 30 }) {
        Text('获得生肖卡')
          .fontColor('#f5ebcf')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
        Image($r(`app.media.img_0${this.randomIndex}`))
          .width(200)
          .scale({
            x: this.maskImgX,
            y: this.maskImgY
          })
          .animation({
            duration: 500
          })
        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({ width: 2, color: '#fff9e0' })
          .onClick(() => {
            // 弹层隐藏
            this.maskOpacity = 0
            this.maskZIndex = -1
            // 图像重置缩放比为0
            this.maskImgX = 0
            this.maskImgY = 0

            // 开心收下
            this.images[this.randomIndex] = {
              url: `app.media.img_0${this.randomIndex}`,
              count: this.images[this.randomIndex].count + 1
            }

            let flag = true
            for (let item of this.images) {
              if (item.count === 0) {
                flag = false
                break
              }
            }
            this.isGet = flag

            // 判断是否中奖
            if (flag) {
              let randomIndex: number = Math.floor(Math.random() * 3)
              this.prize = this.arr[randomIndex]
            }
          })
      }
      // 设置透明度
      .opacity(this.maskOpacity)
      .zIndex(this.maskZIndex)
      // 动画
      .animation({
        duration: 200
      })
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')
      .backgroundColor('#cc000000')

      // 抽大奖的遮罩
      if (this.isGet) {
        Column({ space: 30 }) {
          Text('恭喜获得手机一部')
            .fontColor('#f5ebcf')
            .fontSize(25)
            .fontWeight(700)
          Image($r(`app.media.${this.prize}`))
            .width(300)
          Button('再来一次')
            .width(200)
            .height(50)
            .backgroundColor(Color.Transparent)
            .border({ width: 2, color: '#fff9e0' })
            .onClick(() => {
              this.isGet = false
              this.prize = ''
              this.images = [
                { url: 'app.media.bg_00', count: 0 },
                { url: 'app.media.bg_01', count: 0 },
                { url: 'app.media.bg_02', count: 0 },
                { url: 'app.media.bg_03', count: 0 },
                { url: 'app.media.bg_04', count: 0 },
                { url: 'app.media.bg_05', count: 0 }
              ]
            })
        }
        .justifyContent(FlexAlign.Center)
        .width('100%')
        .height('100%')
        .backgroundColor('#cc000000')
      }

    }
  }
}