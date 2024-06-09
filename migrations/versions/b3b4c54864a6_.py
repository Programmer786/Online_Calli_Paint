"""empty message

Revision ID: b3b4c54864a6
Revises: 469ef5d57e31
Create Date: 2024-05-08 07:08:49.158187

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = 'b3b4c54864a6'
down_revision = '469ef5d57e31'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('product_download_verification', schema=None) as batch_op:
        batch_op.add_column(sa.Column('delivery_status', sa.String(length=50), nullable=True))
        batch_op.drop_column('status')

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('product_download_verification', schema=None) as batch_op:
        batch_op.add_column(sa.Column('status', mysql.VARCHAR(length=50), nullable=True))
        batch_op.drop_column('delivery_status')

    # ### end Alembic commands ###