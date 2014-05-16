rails-assets-for-upyun
======================
把预编译好的静态资源发布到又拍云上（用`rake`）

## 用法

1. 在 `Gemfile` 里引用我： `gem 'rails-assets-for-upyun', '>= 0.0.4'`
2. 首先设置好在生产环境中调用 UpYun 上的资源

  ```
  # .. config/environments/production.rb
  ..
  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  config.action_controller.asset_host = "awesome-bucket.b0.upaiyun.com"
  ..
  ```

3. 在 `Rakefile` 里添加一个任务（起一个最酷的名字！）

  ```
  namespace :assets do
    task :publish_my_holy_shinning_precompiled_miraculous_assets_to_the_almighty_upyun do
      RailsAssetsForUpyun.publish 'awesome-bucket', 'notjustausername', 'thencomesthepassword'
    end
  end
  ```

4. 然后你就可以在每次发布前（`rake assets:precompile`之后）运行一遍这个 rake 任务把他们同步到又拍云上去了。

## 卖点

* 调用 UpYun 提供的 API 进行增量发布，通过 HTTP 通讯，比 FTP 更加稳定、快速
* 使用 UpYun API 提供的签名授权，不明文传送密码，更加安全！

## 详解

```
RailsAssetsForUpyun.publish(bucket, username, password, bucket_path="/", localpath='public', upyun_ap="http://v0.api.upyun.com")
```
