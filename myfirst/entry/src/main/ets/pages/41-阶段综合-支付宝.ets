@Entry
@Component
struct Index {
  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Stack({ alignContent: Alignment.Top }) {
        // 头部
        Row() {
          Column({ space: 4 }) {
            Row({ space: 4 }) {
              Text('北京')
                .fontColor('#fff')
              Image($r('app.media.zfb_head_down'))
                .width(10)
                .fillColor('#fff')
            }

            Text('晴 2℃')
              .fontSize(12)
              .fontColor('#fff')
          }
          .alignItems(HorizontalAlign.Start)

          Row() {
            Row() {
              Image($r('app.media.zfb_head_search'))
                .width(20)
                .fillColor('#666')
                .margin({
                  left: 5,
                  right: 7
                })
              Text('北京交通一卡通')
                .layoutWeight(1)
            }
            .layoutWeight(1)

            Text('搜索')
              .width(55)
              .fontWeight(FontWeight.Bold)
              .border({
                width: {
                  left: 1
                },
                color: '#ccc'
              })
              .textAlign(TextAlign.Center)
              .fontColor('#5b73de')
          }
          .backgroundColor('#fff')
          .height(32)
          .borderRadius(5)
          .margin({
            right: 12,
            left: 12
          })
          .layoutWeight(1)

          Image($r('app.media.zfb_head_plus')).height(30)
            .fillColor('#fff')
        }
        .height(60)
        .padding({
          left: 10, right: 10
        })
        .backgroundColor('#5b73de')
        .zIndex(666)


        // 主体页面
        Scroll() {
          Column() {
            // 头部
            Row() {
              Column({ space: 5 }) {
                Image($r('app.media.zfb_top_scan'))
                  .fillColor('#fff')
                  .width(36)
                Text('扫一扫')
                  .fontColor('#fff')
              }

              Column({ space: 5 }) {
                Image($r('app.media.zfb_top_pay'))
                  .fillColor('#fff')
                  .width(36)
                Text('收付款')
                  .fontColor('#fff')
              }

              Column({ space: 5 }) {
                Image($r('app.media.zfb_top_travel'))
                  .fillColor('#fff')
                  .width(36)
                Text('出行')
                  .fontColor('#fff')
              }

              Column({ space: 5 }) {
                Image($r('app.media.zfb_top_card'))
                  .fillColor('#fff')
                  .width(36)
                Text('卡包')
                  .fontColor('#fff')
              }
            }
            .justifyContent(FlexAlign.SpaceAround)
            .width('100%')
            .backgroundColor('#5b73de')
            .padding({
              top: 5,
              bottom: 15
            })

            // 菜单
            Column() {
              Flex({
                wrap: FlexWrap.Wrap,
              }) {
                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav1'))
                    .width(28)
                  Text('滴滴出行')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav2'))
                    .width(28)
                  Text('生活缴费')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav3'))
                    .width(28)
                  Text('股票')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav4'))
                    .width(28)
                  Text('蚂蚁森林')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav5'))
                    .width(28)
                  Text('手机充值')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav6'))
                    .width(28)
                  Text('余额宝')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav7'))
                    .width(28)
                  Text('花呗')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav8'))
                    .width(28)
                  Text('飞猪旅行')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav9'))
                    .width(28)
                  Text('淘票票')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav10'))
                    .width(28)
                  Text('饿了么')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav11'))
                    .width(28)
                  Text('读书听书')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav12'))
                    .width(28)
                  Text('基金')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav13'))
                    .width(28)
                  Text('直播广场')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav14'))
                    .width(28)
                  Text('医疗健康')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)

                Column({ space: 8 }) {
                  Image($r('app.media.zfb_nav15_more'))
                    .width(28)
                  Text('更多')
                    .fontSize(12)
                    .fontColor('#666')
                }.width('20%')
                .height(65)
              }

              // 产品区
              Row({space: 10}) {
                Image($r('app.media.zfb_pro_pic1'))
                  .layoutWeight(1)
                Image($r('app.media.zfb_pro_pic2')).layoutWeight(1)
                Image($r('app.media.zfb_pro_pic3')).layoutWeight(1)
              }
              .width('100%')

              Column({space: 10}) {
                Image($r('app.media.zfb_pro_list1'))
                  .width('100%')
                Image($r('app.media.zfb_pro_list2'))
                  .width('100%')
              }
              .margin({top: 10})

            }
            .padding(10)
            .width('100%')
            .borderRadius({
              topLeft: 20,
              topRight: 20
            })
            .backgroundColor('#f6f6f6')
          }
          .width('100%')
          .padding({
            top: 60,
            bottom: 60
          })
        }
        .backgroundColor('#5b73de')
      }
      .width('100%')
      .height('100%')

      Row() {
        Column() {
          Image($r('app.media.zfb_tab_home'))
            .width(35)
        }

        Column({ space: 3 }) {
          Image($r('app.media.zfb_tab_money'))
            .width(28)
          Text('理财')
            .fontSize(12)
        }

        Column({ space: 3 }) {
          Image($r('app.media.zfb_tab_life'))
            .width(28)
          Text('生活')
            .fontSize(12)
        }

        Column({ space: 3 }) {
          Image($r('app.media.zfb_tab_chat'))
            .width(28)
          Text('消息')
            .fontSize(12)
        }

        Column({ space: 3 }) {
          Image($r('app.media.zfb_tab_me'))
            .width(28)
          Text('我的')
            .fontSize(12)
        }
      }
      .border({
        width: {
          top: 1
        },
        color: '#aaa'
      })
      .width('100%')
      .height(60)
      .backgroundColor('#fbfcfe')
      .justifyContent(FlexAlign.SpaceAround)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fff')
  }
}