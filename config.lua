Config = {
    Price = 1000,    -- // 支付救治价格 // --
    ReviveTime = 60, --// 配置救治时间 // --
    Hospitals = {
        {
            Bed = {coords = vector3(326.4563, -569.6494, 41.76), heading = 240.0, occupied = false},
            Peds = {
                pedHash = -730659924,
                reception = {coords = vector3(316.6855, -589.353, 42.29184), heading = 181.085},
                doctor = {coords = vector3(326.2515, -570.9254, 42.31734), heading = 349.3116},
            },
        },
    },
}

Strings = {
    ['get_help'] = [[键下 %s 支付$%s 挂号进行手术]],
    ['not_enough'] = [[当前资金账户暂无足够资金!]],
    ['getting_help'] = [[目前手术中,距离手术结束还剩 %s 秒!]],
    ['occupied'] = [[当前手术已约满！请稍后再来]]
}