@Entry
@Component
struct Index {
  build() {
    Column({ space: 15}) {
      Row() {
        Image('https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2020%2F1019%2Ff7b0a405p00qigcac000od200cm00c5g005t005l.png&thumbnail=660x2147483647&quality=80&type=jpg')
          .width(60)
          .borderRadius(30)
      }
      Row() {
        TextInput({
          placeholder: '请输入用户名'
        })
      }
      Row() {
        TextInput({
          placeholder: '请输入密码'
        })
          .type(InputType.Password)
      }
      Row() {
        Button('登录')
          .width('100%')
      }
      Row({ space: 15}) {
        Text('前往注册')
        Text('忘记密码')
      }
    }
    .width('100%')
    .padding(20)
  }
}