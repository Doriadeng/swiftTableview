//
//  ExampleData.swift
//  swiftTableView
//
//  Created by 邓念 on 2018/5/30.
//  Copyright © 2018年 DN. All rights reserved.
//

import Foundation

public struct Item {
    var name: String
    var detail: String
    var imgs: [String]
    
    public init(name: String, detail: String, imgs: [String]) {
        self.name = name
        self.detail = detail
        self.imgs = imgs
    }
}

public struct Section {
    var name: String
    var items: [Item]
    var collapsed: Bool
    
    public init(name: String, items: [Item], collapsed: Bool = false) {
        self.name = name
        self.items = items
        self.collapsed = collapsed
    }
}

public var sectionsData: [Section] = [
    Section(name: "鲜切花", items: [
        Item(name: "折莲", detail: "水陆草木之花，可爱者甚蕃。晋陶渊明独爱菊。自李唐来，世人盛爱牡丹。予独爱莲之出淤泥而不染，濯清涟而不妖，中通外直，不蔓不枝，香远益清，亭亭净植，可远观而不可亵玩焉。",imgs:["lianhua_1","lianhua_2"]),
        Item(name: "帝王花", detail: "帝王花（Protea cynaroides），又名普蒂亚花，是南非共和国的国花。其花朵硕大、花形奇特、瑰丽多彩、高贵优雅，号称“花中之王”。久开不败的帝王花，被誉为全世界最富贵华丽的鲜花，代表着旺盛而顽强的生命力，并象征着胜利、圆满与吉祥。",imgs:["diwanghua_1","diwanghua_2","diwnghua_3"]),
        Item(name: "绣球花", detail: "何年植向仙坛上，早晚移栽到梵家。虽在人间人不识，与君名作紫阳花。--白居易",imgs:["xiuqiu_1","xiuqiu_2"]),
        Item(name: "鲁丹鸟", detail: "鳞托菊（Rhodanthe manglesii）为一种草本植物，也称为麟托菊、姬麦杆、大羽冠毛菊。 在大陆似乎被称为鲁丹鸟。在西方，则被俗称为 Pink Sunray、Silver Bells、Australian Strawflower、Timeless Rose 或 Mangles Everlasting。原产于西澳，在原产地中，八月到十月间盛开。",imgs:["ludanniao_1","ludanniao_2"]),
        Item(name: "芍药", detail: "",imgs:["shaoyao_1","shaoyao_2"]),
        //        Item(name: "棉花", detail: "棉花不是花，照样当花赏。",imgs:["mianhua_1","mianhua_2"]),
        ]),
    Section(name: "多肉", items: [
        Item(name: "玉露", detail: "多年生肉质草本植物，植株初为单生，以后逐渐呈群生状。肉质叶呈紧凑的莲座状排列，叶片肥厚饱满，翠绿色，上半段呈透明或半透明状，称为“窗”，有深色的线状脉纹，在阳光较为充足的条件下，其脉纹为褐色，叶顶端有细小的“须”。 花葶腋生，总状花序，小花白色。",imgs:["yulu_1"]),
        Item(name: "弹簧草", detail: "弹簧草形态独特，鳞茎古朴，其线条流畅飘逸，富于变化，花淡雅清新，适合用小盆栽种，点缀于窗台、几案等处，奇特而有趣。",imgs:["tanhuangcao_1"])
        ]),
    Section(name: "观叶植物", items: [
        //        Item(name: "镜面草", detail: "镜面草（学名：Pilea peperomioides Diels）：是多年生肉质草本植物。镜面草那肥厚近圆形的肉质叶，叶柄盾状着生，很象古代仙人照面的镜子，故人们亲切地称它为镜面草。镜面草叶片深绿色，有光泽，叶的中央上方叶柄着生处有一个金黄色的圆点，故人们又称它为“一点金”。从中央向四周有辐射状叶脉，有人又叫它“金线草”。翠绿色的叶片又象圆形的屏风，云南人就普遍称它为“翠屏草”。",imgs:["jingmiancao_1"]),
        Item(name: "吊竹梅", detail: "因其叶形似竹、叶片美丽常以盆栽悬挂室内，观赏其四散柔垂的茎叶，故名之吊竹梅。'Zebrina'源于拉丁语'Zebrinus'，意思是'叶片有条纹的'，有斑马之意。",imgs:["diaozhumei_1"]),
        Item(name: "尤加利叶", detail: "独特不张扬，简单有内涵",imgs:["youjialiye_1"]),
        Item(name: "青苹果竹芋", detail: "翠叶青枝根饰链，和露带雨惹人怜。不慕颜色不争春，只留青气在人间。",imgs:["qingpingguozhuyu_1"])
        ])
]



//注意点
/*
 1、swift3 和 swift4 对应的第三方库的版本号不一样，比如swift4 要引入 SnapKit4.0，swift3 引入 SnapKit3.2
 2、不用import
 3、可选类型
 4、空合运算符??
 5、类型转型操作符 as?
 
 */
