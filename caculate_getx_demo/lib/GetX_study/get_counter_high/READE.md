#将逻辑层和状态层分开

在逻辑类中实例化一个状态类，使得逻辑类可以通过该实例获取到状态

在view试图中：
        final logic = Get.put(GetCounterHighLogic()); 这是通过Get.put来实例化GetCounterHighLogic()，获得的实例可以使用当下所有的子路由
        final state = Get.find<GetCounterHighLogic>().state;这是找到刚刚被实例化的GetCounterHighLogic===>logic,使用logic的state