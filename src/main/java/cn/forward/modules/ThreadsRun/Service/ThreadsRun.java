package cn.forward.modules.ThreadsRun.Service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.task.TaskExecutor;
import org.springframework.stereotype.Service;

@Service
public class ThreadsRun {
    /**
     * 日志对象
     * */
    private static Logger logger = Logger.getLogger(ThreadsRun.class);

    @Autowired
    private TaskExecutor taskExecutor;


    //通过@Async注解表明该方法是个异步方法，如果注解在类级别，则表明该类所有的方法都是异步方法。
    // 而这里的方法自动被注入使用ThreadPoolTaskExecutor作为TaskExecutor
    public void daiSapPlanWSJob(String str){
        taskExecutor.execute(new Runnable() {
            @Override
            public void run() {
                Thread th = Thread.currentThread();
                logger.info("当前线程名称是："+th+"\n该传参是"+str);
            }
        });

    }
}
