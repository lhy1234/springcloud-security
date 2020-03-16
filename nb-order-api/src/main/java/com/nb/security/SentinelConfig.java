package com.nb.security;

import com.alibaba.csp.sentinel.slots.block.RuleConstant;
import com.alibaba.csp.sentinel.slots.block.degrade.DegradeRule;
import com.alibaba.csp.sentinel.slots.block.degrade.DegradeRuleManager;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRule;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRuleManager;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * sentinel规则,硬编码方式
 */
//@Component
public class SentinelConfig implements ApplicationListener<ContextRefreshedEvent> {

    @Override
    public void onApplicationEvent(ContextRefreshedEvent event) {
        //系统启动好以后执行
        List<FlowRule> rules = new ArrayList<>();
        //流控规则
        FlowRule rule = new FlowRule();
        rule.setResource("createOrder");//资源名称
        rule.setGrade(RuleConstant.FLOW_GRADE_QPS);
        rule.setCount(5);//设置QPS=1，每秒1个请求
        rules.add(rule);
        FlowRuleManager.loadRules(rules);
        //熔断
        DegradeRule degradeRule = new DegradeRule();
        degradeRule.setResource("createOrder");
        //RuleConstant.DEGRADE_GRADE_EXCEPTION_COUNT 时间单位为1分钟，一分钟错误达到count值才打开
        degradeRule.setGrade(RuleConstant.DEGRADE_GRADE_RT); //响应时间，QPS>=5 才生效
        degradeRule.setCount(10); //响应时间超过10毫秒才统计算，1秒5个请求都超10毫秒就熔断
        degradeRule.setTimeWindow(10);//熔断的持续时间，秒
        List<DegradeRule> degradeRules = new ArrayList<>();
        degradeRules.add(degradeRule);
        DegradeRuleManager.loadRules(degradeRules);
    }
}
