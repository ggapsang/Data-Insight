Attribute VB_Name = "RangeOps_InplaceRecursor_m"
Sub InplaceRecursor()

    Dim msgResponse As Integer

    ' ��ȯ ���� ���� ���¸� Ȯ���Ͽ� ������ �޽����� ǥ��
    If Application.Iteration Then
        msgResponse = MsgBox("��ȯ ������ ��Ȱ��ȭ�Ͻðڽ��ϱ�?", vbYesNo + vbQuestion, "��ȯ ���� ���� ����")
        If msgResponse = vbYes Then
            ' ��ȯ ���� ��Ȱ��ȭ
            Application.Iteration = False
            MsgBox "��ȯ ������ ��Ȱ��ȭ�Ǿ����ϴ�.", vbInformation
        End If
    Else
        msgResponse = MsgBox("��ȯ ������ Ȱ��ȭ�Ͻðڽ��ϱ�?", vbYesNo + vbQuestion, "��ȯ ���� ���� ����")
        If msgResponse = vbYes Then
            ' ��ȯ ���� Ȱ��ȭ
            Application.Iteration = True
            Application.MaxIterations = 1  ' ��ȯ ������ �ִ� �ݺ� Ƚ���� 1�� ����
            Application.MaxChange = 0.001  ' ���Ǵ� �ִ� ��ȭ�� ����
            MsgBox "��ȯ ������ Ȱ��ȭ�Ǿ����ϴ�. ����� ������ �Ŀ��� ��Ȱ��ȭ���ּ���.", vbInformation
        End If
    End If

End Sub
