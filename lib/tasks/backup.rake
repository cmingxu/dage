task :backup do
  today = Date.today.strftime("%Y%M%d")
  sh "mysqldump -uroot dake_production > /home/deploy/backup_sqls/#{today}.sql"
end
