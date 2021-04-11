read -p "Введите назване станции для проверки: " STATION;
ansible-playbook -i /etc/ansible/hosts_isvn -l ${STATION}_IPMI /etc/ansible/playbook_isvn/ipmi_error.yml;
read -p "Следующая станция Да\Нет?: " CHOISE;
while [[ $CHOISE == Д || $CHOISE == ДА || $CHOISE == Да ||$CHOISE == да || $CHOISE == д ]]; do
  read -p "Введите назване следующей станции для проверки: "  NEXT_STATION;
  ansible-playbook -i /etc/ansible/hosts_isvn -l ${NEXT_STATION}_IPMI /etc/ansible/playbook_isvn/ipmi_error.yml;
  read -p "Продолжаем? " CHOISE
done
echo "До встречи!"
