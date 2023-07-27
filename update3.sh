#!/bin/bash
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /data/data/com.termux/files/usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYk}�o �_�|r�o����������D@  `
+���o<zt�s��t�)�*^�A��I�Od�S&P<SC�
24?T� �A�z��M��2M4�E=I�24l� d1 ���4=@�2i�� �d 4�
h � ~�(�4�h�     � �4)Ꟃh�?AG�S���m@�� �M 
@D�	�����~�ؑ�h4�ɨ
@�['	��Tϻ��g�,�q���k��FP���������0季P�A�O<������:��}����V�F^�sc�bť8}t��j
L5Z�*��Jr�{:�X�uB�K��%����"����j�ֲ֒tW�����1M�g��� �$��k��0+mS����D&��]����fj0�G����&�5�A�G5�κ}��鯿���(e��ϴ t >0>�CUe�Ne�JӛYu4�~5@           �ғ,ј�V�fd������n8ڷ�w�[?5��i*L\�s^�f����*,�]V���3[o#O�`Ϯ2���jA��7p+e����GX2������F��Q}�I�=˹B�Fa�	���cNh

Bj?^bi�p;;d�)a;Юb2Ё1=�e��M��M�`z8�~$�# �J]�?Ezd�I�+�!UA���'�4,��B��
$C������D�����@eӔz�4��;�$��jp)���Ѝ� �r�����}�4w1��� [��
�����t�;B��BP��ɳ�ɦ3L���\��o��G�`clT+�8�Ϻ�a	
�Kw��b���[��
�&N;DK̑p�HH����������$$KmDh���Z J(�HZ�m�q0B�`T0��:������BGo�B����)p�zKl����7��w��p�o�ж�D���Q��Zh�!��x����F�/�1v#Ќ�����p�Ez`
�8��
PY���my�α(�ʂN�='w��^ x&�	*�TB��_�=�C/ܛ�8��R�I�g5�H��3Isn�����Z�ZΏ�X���Y07E�Z�g�)��<�2
.�_[�):����^�<s���Z�_��?$�a!2����8d�y��];�O�)Xn��X�܃���Z��K=4�T.^�D���>�� tBI�
�t�~7�z�?�[��>���|@/�����C���z����09����x��t �Я���T���A�\�W�"���]�#M�����"��Hr�nf(��L�N��v�>��3s9M�
�.rCc�8�<�J�C�:�����xwW&J�Z^_	R^n�޺wc��0�*���(6�;R'CS��_Knמ�{�r��r�z�
���]^�eL�(��F�@�၁��2Fq�R�_���HD���6��L�W�q:S�ӧ(~q�s�
�@�ȚCŰ @�9�EG$$Y �w"<��������T�P�@�[��� EOuneÔ!_}�ӝ�7R�-	!%Q!	D!% �!�����ի���"B/�tx7j�f�ھG�#�t��n����ѯA�U�-iY^����_Lp�MMMw��yxb�R�D��Rї���7�hbcm��W��/)�
8�>�AU��(���I`��C������F�\�6�,D���t�
�!|&�0��Z���$���o?he��`u3�h��;Q� Ci�m�!�� �P�޴�cW?RSkТ�8��u_"dQ7N���Ufd�F��8RR��ԭk�@��	=�K7"a'��cٱ��[��0xF,��4�y��vG�+��(㉃��� ���U�J$�5�>g�'FoozS���lZҧ8��+���2�'��{�",�tma�i�Q
�B���sw���Eoq3ӷf�q:���wý �@0u��VѼ@fd/k@�H�$�0f��B�5-��U��M;h�
�8�t��Y�e�].�� ���ɽ�n�|�n[.R�K�##"Ȳ�M��9l�8�X��zw�
㳶�QUX
<�l��
9��ø�RDN[7� 1-���ɖM��!��:Q@鵭D켕��$;�|�.�]oͲB̑!��K0P߳�����h�j��ҽ��.���w�<Zu =�����;+�
}��������D�*PT�^�k]�e���׽�d��@��(��P���]��Y���3ҡw�%�`���Z�v�2�/�.�p� ����