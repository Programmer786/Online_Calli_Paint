"""empty message

Revision ID: db05eecefcaf
Revises: 6844689b739a
Create Date: 2024-05-06 08:07:03.499892

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = 'db05eecefcaf'
down_revision = '6844689b739a'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('make_notification', schema=None) as batch_op:
        batch_op.alter_column('end_date',
               existing_type=mysql.DATETIME(),
               type_=sa.Date(),
               nullable=True)

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('make_notification', schema=None) as batch_op:
        batch_op.alter_column('end_date',
               existing_type=sa.Date(),
               type_=mysql.DATETIME(),
               nullable=False)

    # ### end Alembic commands ###
