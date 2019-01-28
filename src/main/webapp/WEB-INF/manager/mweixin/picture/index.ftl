<!--图文素材页-->
<link rel="stylesheet" href="../../../static/mweixin/css/picture-list.css">
<div id="picture-list-vue" v-if="menuVue.menuActive == '图片'" class="ms-weixin-content">
   <el-container>
      <!--右侧头部-->
      <el-header class="ms-header" height="52px">
         <el-row>
            <el-button type="primary" size="small" icon="el-icon-plus">添加</el-button>
            <el-button class="ms-fr" size="small" icon="el-icon-refresh">刷新</el-button>
            <el-button class="ms-fr" size="small">同步微信素材</el-button>
         </el-row>
      </el-header>
      <el-container>
         <!--内容头部-->
         <el-header class="ms-tr ms-header">
            <el-select v-model="value1" placeholder="请选择" size="small">
               <el-option v-for="item in options1" :key="item.value" :label="item.label" :value="item.value">
               </el-option>
            </el-select>
            <el-select v-model="value2" placeholder="请选择" size="small">
               <el-option v-for="item in options2" :key="item.value" :label="item.label" :value="item.value">
               </el-option>
            </el-select>
            <el-button type="primary" icon="el-icon-search" size="small">查询</el-button>
         </el-header>
         <!--素材列表-->
         <el-main class="ms-admin-picture-list">
            <div class="ms-admin-picture-item" v-for="picture in pictureList">
               <div class="body">
                  <img :src="picture.img" />
                  <div>
                     <input type="checkbox" />
                     <span v-text="picture.title"></span>
                  </div>
               </div>
               <div class="footer">
                  <i class="el-icon-edit"></i>
                  <em></em>
                  <i class="el-icon-delete"></i>
                  <em></em>
                  <i class="el-icon-delete"></i>
               </div>
            </div>
         </el-main>
      </el-container>
   </el-container>
</div>

<script>
   new Vue({
      el: "#picture-list-vue",
      data: {
         options1: [{
            value: '全部图片',
            label: '全部图片'
         }],
         options2: [{
            value: '全部图片',
            label: '全部图片'
         }],
         value1: '全部图片',
         value2: '',
         pictureList: [{
               date: '12月27日',
               title: 'HUAWEI Mate 20 6GB+64GB 全网最低价...',
               img: '../images/data/ms-bg_1.jpg',
               det: '传播名HUAWEI Mate 20 6GB+64GB 全网最低价，后置摄像头后置莱卡散射，12000万亿像素（光脚，1/1.6光圈）+1200万像素（超广角），......'
            },
            {
               date: '12月27日',
               title: 'HUAWEI Mate 20 6GB+64GB 全网最低价...',
               img: '../images/data/ms-bg_1.jpg',
               det: '传播名HUAWEI Mate 20 6GB+64GB 全网最低价，后置摄像头后置莱卡散射，12000万亿像素（光脚，1/1.6光圈）+1200万像素（超广角），......'
            }
         ],
      },
      methods: {},
      mounted: function() {}
   })
</script>