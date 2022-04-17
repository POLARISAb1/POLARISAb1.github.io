echo "开始执行清除和编译。。。"
hexo clean && hexo g
echo "开始推送博客。。。"
hexo d
echo "--- 推送完成 ---"

echo "开始备份文件。。。"
sj=$(date '+%Y-%m-%d')
git add .
git commit -m "$sj 备份文件"
git push
echo "--- 备份完成 ---"
