@Entry
@Component
struct Index {
  build() {
    Column({space: 15}) {
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
          .width(200)
      }
    }
  }
}