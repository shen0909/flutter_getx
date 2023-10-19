点击切换页面

底部导航栏-------BottomNavigationBar
---->onTap 点击时的回调函数--》修改当前选中的导航栏位序和跳转到对应位序的页面
---->items BottomNavigationBarItem 底部导航栏的子列 在里面设计
---->selectedItemColor  被选中的子列颜色
---->currentIndex  当前被选中的
---->

PageView.builder
---->itemBuilder根据回调的index返回不同页面
---->itemCount数量
---->controller控制器

pageController.jumpToPage(index)------>页面跳转到对应位序的页面
