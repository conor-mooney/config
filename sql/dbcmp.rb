#!/usr/bin/ruby -w

ip_file = ARGV[0]

File.open(ip_file, 'r') do |ip|
  op = nil
  ip.each_line do |line|
    case line
    when /^\s*create\s+(table|view)\s+`(.*?)`\s+.*/i
      op.close unless op.nil?
      op_file = "#{$2}.structure.sql"
      op = File.open(op_file, 'w')
      op.puts line
    when /^\s*insert\s+into\s+`(.*?)`\s+.*/i
      op.close unless op.nil?
      op_file = "#{$1}.data.sql"
      op = File.open(op_file, 'w')
      op.puts line.gsub("(", "\n(")
    else
      op.puts line unless op.nil?
    end
    if line =~ /.*;\s*$/ && !op.nil?
      op.close
      op = nil
    end
  end
  op.close unless op.nil?
end
